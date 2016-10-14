<actions_table_view>
  <table class="table table-striped">
     <thead>
        <tr>
          <th each={col_number in [0,1,2]}>
            <span class="table_cell">{this.column_names[col_number]} </span>
          </th>
        </tr>
     </thead>
     <tbody>
        <tr each={row_number in [0,1,2]}>
          <td each={column, column_number in this.columns} > 
            <span class="table_cell">
              {column[row_number].name}
            </span>
          </td>
        </tr>
     </tbody>
  </table>
  <h1>{this.column_names[0]}</h1>
  <script>
    this.columns = opts.columns || [[],[],[]]
    this.column_names = opts.column_names || ['First Goal', 'Second Goal', 'Third Goal']
    this.saved = opts.saved || false
    
    this.on('update', function() {

    })  
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
</actions_table_view>
