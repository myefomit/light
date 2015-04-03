require_relative '../../config/environment'

module Light
  class Migrator
    require "sequel"
    Sequel.extension :migration

    def self.migrate!
      db = Sequel.connect(ENV.fetch('LIGHT_DATABASE_URL'))
      Sequel::Migrator.run(db, "#{__dir__}/../../db/migrations", use_transactions: true)
    end

    private

      def dump_schema
        #TODO: Dump schema when migrate
      end
  end
end
