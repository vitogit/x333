<actions_table>
  <table class="table table-striped">
     <thead>
        <tr>
          <th each={col_number in [0,1,2]}>
            <span class="table_cell" contenteditable={!saved}  id="column_{col_number}">{column_names[col_number]} </span>
          </th>
        </tr>
     </thead>
     <tbody>
        <tr each={row_number in [0,1,2]}>
          <td each={column, column_number in columns} > 
            <span contenteditable={!saved} class="table_cell" id="cell_{column_number}_{row_number}">
              {column[row_number].name}
            </span>
          </td>
        </tr>
     </tbody>
  </table>
  <button onclick={save}>save</button>

  <script>
    this.columns = opts.columns || [[],[],[]]
    this.column_names = opts.column_names || ['First Goal', 'Second Goal', 'Third Goal']
    this.saved = opts.saved || false
    
    save() {
      for (var col=0; col<3 ;col++) {
        var cell = this['column_'+col]
        var cell_value = cell.innerHTML
        this.column_names[col] = cell_value
      }

      for (var col=0; col<3 ;col++) {
        for (var row=0; row<3 ;row++) {
          var cell = this['cell_'+col+'_'+row]
          var cell_value = cell.innerHTML
          this.columns[col][row] = new Action({name:cell_value})
        }
      }
      this.saved = true
      var actionsTable = new ActionsTable({column_names: this.column_names})
      console.log('actionTable child____'+actionsTable.column_names)
      riot.globalStore.trigger('save_new_sprint',actionsTable)
      //this.parent.save({column_names:this.column_names, columns:this.columns, saved:this.saved})
    }

  </script>
  <style>
    .table_cell {
      width:100%;
      display:inline-block;
      border-bottom: 1px solid;
    }
    
    th {
      width: 33%;
    }
  </style>
</actions_table>
