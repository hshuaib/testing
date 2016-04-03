class CreateDisabilities < ActiveRecord::Migration
  def change
    create_table :disabilities do |t|
      t.string :name

      t.timestamps null: false
    end
    
    
    Disability.reset_column_information
        Disability.create( :name => 'إعاقة سمعية' )
        Disability.create( :name => 'إعاقة بصرية' )
        Disability.create( :name => 'إعاقة حركية' )
        Disability.create( :name => 'إعاقة ذهنية' )
        
        
  end
end
