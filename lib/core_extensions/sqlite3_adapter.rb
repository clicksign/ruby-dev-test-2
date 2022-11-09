require 'active_record/connection_adapters/sqlite3_adapter'

#
# Monkey-patch for disable foreign keys during `alter_table` for sqlite3 adapter for Rails 5
# Source: https://gist.github.com/javier-menendez/3cfa71452229f8125865a3247fa03d51
#

module ActiveRecord
  module ConnectionAdapters
    class SQLite3Adapter < AbstractAdapter

      # REFERENTIAL INTEGRITY ====================================

      def disable_referential_integrity # :nodoc:
        old_foreign_keys = query_value("PRAGMA foreign_keys")
        old_defer_foreign_keys = query_value("PRAGMA defer_foreign_keys")

        begin
          execute("PRAGMA defer_foreign_keys = ON")
          execute("PRAGMA foreign_keys = OFF")
          yield
        ensure
          execute("PRAGMA defer_foreign_keys = #{old_defer_foreign_keys}")
          execute("PRAGMA foreign_keys = #{old_foreign_keys}")
        end
      end

      def insert_fixtures_set(fixture_set, tables_to_delete = [])
        disable_referential_integrity do
          transaction(requires_new: true) do
            tables_to_delete.each {|table| delete "DELETE FROM #{quote_table_name(table)}", "Fixture Delete"}

            fixture_set.each do |table_name, rows|
              rows.each {|row| insert_fixture(row, table_name)}
            end
          end
        end
      end

      private

      def alter_table(table_name, options = {})
        altered_table_name = "a#{table_name}"
        caller = lambda {|definition| yield definition if block_given?}

        transaction do
          disable_referential_integrity do
            move_table(table_name, altered_table_name,
                       options.merge(temporary: true))
            move_table(altered_table_name, table_name, &caller)
          end
        end
      end
    end
  end
end
