# Be sure to restart your server when you modify this file.
#
# Points are a simple integer value which are given to "meritable" resources
# according to rules in +app/models/merit/point_rules.rb+. They are given on
# actions-triggered, either to the action user or to the method (or array of
# methods) defined in the +:to+ option.
#
# 'score' method may accept a block which evaluates to boolean
# (recieves the object as parameter)

module Merit
  class PointRules
    include Merit::PointRulesMethods

    def initialize

      score 20, on: [
        'debates#create'
      ]

      score 30, on: [
        'proposals#create'
      ]

      score 40, on: [
        'budget_investments#create'
      ]

      score 5, on: 'comments#create' do |comment|
        # gives 1 star to comementable creator
        comment.commentable.author.add_points(1)
      end
    end
  end
end
