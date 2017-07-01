class CreateEmployees < ActiveRecord::Migration
    def up
        create_table :employees do |t|
            t.integer "department_id"
            t.string "first_name", :limit => 50
            t.string "last_name", :limit => 50
            t.string "job_tittle", :limit => 50
            t.string "email", :default => '', :null => false
            t.timestamps
        end
    end


    def down
        drop_table :employees
    end

end
