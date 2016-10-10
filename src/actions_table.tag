<actions_table>
  <input name="input_text" type="text"/>
  <select name="select_column">
    <option value="0">Column1</option>
    <option value="1">Column2</option>
    <option value="2">Column3</option>
  </select>
  <button onclick={add_action}>Add action</button>
  <table class="table table-striped">
     <thead>
        <tr>
           <th>Column1 </th>
           <th>Column2 </th>
           <th>Column3 </th>
        </tr>
     </thead>
     <tbody>
        <tr each={row_number in [0,1,2]}>
          <td each={column, column_number in columns} > 
            <span contenteditable="true" class="table_cell" id="cell_{row_number}_{column_number}">
              {column[row_number].name}
            </span>
          </td>
        </tr>
     </tbody>
  </table>
  
  <script>
    this.columns = [[],[],[]]
    
    add_action() {
      var action = new Action({name:this.input_text.value})
      this.add_action_to_column(action, this.select_column.value)
    }

    add_action_to_column(action, column_position) {
      this.columns[column_position].push(action)
    }
  </script>
  <style>
    .table_cell {
      width:100%;
      display:inline-block;
    }
  </style>
</actions_table>
