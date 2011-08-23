sys = require 'sys'
class FooController extends ApplicationController
  
  index: ->
    @bacon = 'Strip steak drumstick t-bone jerky beef ribs. Drumstick ground round beef sausage, bacon strip steak t-bone jerky corned beef hamburger ball tip tenderloin. Shank turkey ham cow, shankle tail hamburger. Beef ribs sirloin ribeye, short loin venison strip steak t-bone. Tri-tip short ribs pork, shoulder short loin pancetta strip steak venison tail spare ribs cow sausage ham hock shankle. Pancetta ball tip pork chop chicken drumstick, ground round meatball strip steak. Turkey spare ribs meatball tongue, hamburger shankle jerky ball tip pork belly pork chop.'
    @render()
    
  show: ->
    @render text: """
params were: #{sys.inspect(@params())}
ID: #{@params('id')}
    """
    
  boom: ->
    throw new Error('Ooops!')
    
exports.controller = FooController