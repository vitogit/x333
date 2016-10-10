<actions_table>
  <button onclick={save}>save</button>
  <table class="table table-striped">
     <thead>
        <tr>
           <th>{column_names[0]}</th>
           <th>{column_names[1]}</th>
           <th>{column_names[2]}</th>
        </tr>
     </thead>
     <tbody>
        <tr each={row_number in [0,1,2]}>
          <td each={column, column_number in columns} > 
            <span contenteditable="true" class="table_cell" id="cell_{column_number}_{row_number}">
              {column[row_number].name}
            </span>
          </td>
        </tr>
     </tbody>
  </table>
  
  <script>
    this.columns = opts.columns || [[],[],[]]
    this.column_names = opts.column_names || ['column1', 'column2', 'column3']
    
    save() {
      for (var col=0; col<3 ;col++) {
        for (var row=0; row<3 ;row++) {
          var cell_value = this['cell_'+col+'_'+row].innerHTML
          this.columns[col][row] = cell_value
        }
      }
    }

  </script>
  <style>
    .table_cell {
      width:100%;
      display:inline-block;
      border-bottom: 1px solid;
    }
  </style>
</actions_table>
