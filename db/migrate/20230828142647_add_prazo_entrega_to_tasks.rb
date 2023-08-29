class AddPrazoEntregaToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :prazo_entrega, :datetime
  end
end
