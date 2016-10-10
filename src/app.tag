<app>
  <h1 class="text-center">x333</h1>
  
  
  <div class="container theme-showcase" role="main">
      <div class="text-center" class="jumbotron">
        <h3>Current Sprint</h3>
        <actions_table></actions_table>
      </div>
      
      <div class="text-center" class="new_sprint">
        <h1>New Sprint</h1>
        <actions_table></actions_table>
        <button onclick="save_sprint">Save</button>
      </div>
      
      <div class="text-center" class="history">
        <h1>History</h1>
        <div class="row">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Username</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@mdo</td>
                </tr>
                <tr>
                  <td>Mark</td>
                  <td>Otto</td>
                  <td>@TwBootstrap</td>
                </tr>
                <tr>
                  <td>Jacob</td>
                  <td>Thornton</td>
                  <td>@fat</td>
                </tr>
              </tbody>
            </table>
        </div>
      </div>


  </div>
  
  <script>
    this.sprints = []
    this.current_sprint = {}
    this.new_sprint = {}
    save_sprint() {
      
    }
  </script>
</app>
