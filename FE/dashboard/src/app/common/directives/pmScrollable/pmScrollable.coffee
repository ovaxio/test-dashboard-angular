# angular.module 'pmLucky'
# .directive 'pmScrollable', ()->
#   return {
#     restrict: 'A'
#     scope:
#       pmScrollable: '='
#     link: (scope, element)->
#       scope.$watch 'pmScrollable', (newValue)->

#         $self = angular.element this
#         $data = $self.data()
#         $slimResize = false
#         $self.slimScroll $data

#         angular.element window
#         .resize (e)->
#           clearTimeout $slimResize
#           $slimResize = setTimeout ()->
#             $self.slimScroll $data
#           , 500

#         angular.element document
#         .on 'updateNav', ()->
#           $self.slimScroll $data
#   }