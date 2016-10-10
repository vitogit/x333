describe('action spec', function() {
  context('default', function() {

    it('creates an action', function() {
      expect(new Action()).to.exist 
    })
    
    it('has the requiered properties', function() {
      var action = new Action({name:'hello'})
      expect(action.name).to.exist 
      expect(action.disabled).to.exist 
      expect(action.completed).to.exist 
    })    
  })
})
