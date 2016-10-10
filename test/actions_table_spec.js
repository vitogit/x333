describe('actions table spec', function() {
  context('default', function() {
    beforeEach(function() {
      var html = document.createElement('actions_table')
      document.body.appendChild(html)
      tag = riot.mount('actions_table')[0]
    });

    it('actions_table exists', function() {
      expect(tag).to.exist
    })
    
    it('has 3 columns', function() {
      expect(tag.columns).to.have.lengthOf(3)
    })
    
    it('add an action to specific column', function() {
      var action = new Action({text:'helo'})
      tag.add_action_to_column(action,0)
      expect(tag.columns[0]).to.have.lengthOf(1)
    })
    
    // it('is disabled after save', function() {
    // })
    // 
    // it('completes the action', function() {
    // })
    // 
    // it('calcualtes the completed actions', function() {
    // })    
  })
})
