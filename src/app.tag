<app>
  <div class="container theme-showcase" role="main">
      
      <div class="text-center" class="new_sprint">
        <h1>New Sprint</h1>
        <actions_table id='new_sprint_tag' columns={new_sprint.columns} column_names={new_sprint.column_names} saved={new_sprint.saved}></actions_table>
      </div>

      <div if={this.sprints.length > 0} class="text-center" class="jumbotron">
        <h3>Current Sprint</h3>
        <actions_table id='current_sprint_tag' data={current_sprint}></actions_table>
      </div>

      <div class="text-center" class="history" >
        <h1 class="link">History</h1>
        <div class="row" each={sprint,i in sprints}>
          <actions_table_view id="history_sprint_tag_{i}" columns={sprint.columns} column_names={sprint.column_names} saved={sprint.saved}></actions_table_view>
        </div>
      </div>
  </div>

  <script>
    var self = this
    this.sprints = []
    this.new_sprint = {columns:[[],[],[]], column_names:['1','2','3'], saved:false}
    this.current_sprint = {}

    save(at) {
      console.log('at column0____'+at.column_names[0])
      this.sprints.push(at)
      //this.new_sprint = {columns:[[],[],[]], column_names:['1','2','3'], saved:false}
      this.update()
    }
    
    toggle_history() {
      this.history_visible = !this.history_visible
    }

    toggle_new_sprint() {
      this.new_sprint_visible = !this.new_sprint_visible
    }
    
    this.history_visible = false
    this.new_sprint_visible = true
    
    riot.globalStore.on('save_new_sprint', function(actions_table){
      self.save(actions_table)
    })

  </script>
  <style>
    .link {
      cursor:pointer;
    }
  </style>
</app>
