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

    it('has 3 column names', function() {
      expect(tag.column_names).to.have.lengthOf(3)
    })
    
    it('save actions to specific cell', function() {
      //column-row
      tag.cell_0_0.innerHTML = 'hello'
      tag.cell_1_0.innerHTML = 'bye'
      tag.save()
      expect(tag.columns[0][0]).to.be.eq('hello')
      expect(tag.columns[1][0]).to.be.eq('bye')
      
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
