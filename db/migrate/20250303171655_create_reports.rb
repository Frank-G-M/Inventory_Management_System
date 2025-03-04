class CreateReports < ActiveRecord::Migration[7.2]
  def change
    create_table :reports do |t|
      t.string :report_type
      t.datetime :generated_at
      t.text :details

      t.timestamps
    end
  end
end
