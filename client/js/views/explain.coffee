{$}      = require '../vendors'
View     = require './view.coffee'
Util     = require '../util.coffee'
template = require '../../templates/explain.mustache'

class Explain extends View
  id:        'explain'
  tagName:   'section'
  className: 'app-section'
  template:  template

  ui:
    '$doc': '.document'

  events:
    'click button, span.e': Util.toggleCollapser

  dataEvents:
    'sync model': 'updateExplain'

  updateExplain: ->
    @$doc.html(@model.prettyPrint())

module.exports = Explain
