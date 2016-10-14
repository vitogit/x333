describe('app spec', function() {
  context('default', function() {
    beforeEach(function() {
      var html = document.createElement('app')
      document.body.appendChild(html)
      app = riot.mount('app')[0]
      console.dir(app)
      new_actions_table = app.tags.actions_table[0]
      riot.globalStore = new GlobalStore()

    });

    afterEach(function() {
      document.getElementsByTagName("app")[0].remove();
    });
    
    it('has an app var', function() {
      expect(app).to.exist
    })

    it('has a new sprint (actions_table)', function() {
      expect(app.new_sprint_tag).to.exist
    })
    
    //todo refactor this mess
    it('save a new sprint -> current_sprint visible -> new_sprint should be empty -> sprint[0] should be the saved sprint)', function() {
      var current_sprint_tag = document.querySelector('#current_sprint_tag')
      expect(current_sprint_tag).to.not.exist;

      app.save({column_names:['test1','test2','test3']})
      
      current_sprint_tag = document.querySelector('#current_sprint_tag')
      expect(current_sprint_tag).to.exist;   
      
      expect(app.sprints).to.have.lengthOf(1)
      

      expect(new_actions_table.column_names).to.eql(['1','2','3'])
      
      expect(app.sprints[0].column_names).to.eql(['test1','test2','test3'])

    })   
    
    //todo refactor this mess
    it('save a new sprint -> history works correctly)', function() {
      app.save({column_names:['test1','test2','test3']})
      app.save({column_names:['test4','test5','test6']})
      
      expect(app.sprints).to.have.lengthOf(2)
    
      expect(app.sprints[0].column_names).to.eql(['test1','test2','test3'])
      expect(app.sprints[1].column_names).to.eql(['test4','test5','test6'])
    })      
    // 
    // context('after save', function() {
    //   it('make the current_sprint visible)', function() {
    //     var current_sprint_tag = document.querySelector('#current_sprint_tag')
    //     expect(current_sprint_tag).to.not.exist;
    //     app.save({})
    //     current_sprint_tag = document.querySelector('#current_sprint_tag')
    //     expect(current_sprint_tag).to.exist;   
    //     expect(app.sprints).to.have.lengthOf(1)      
    //   })   
    // })
    
  })
})
