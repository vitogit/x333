function Action(options) {
  options = options || {}
  this.name = options.name || ''
  this.disabled = options.disabled || false
  this.completed = options.completed || false
}

function ActionsTable(options) {
  options = options || {}
  this.column_names = options.column_names || []
}
