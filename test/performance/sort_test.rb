require 'test_helper'
require 'rails/performance_test_help'

class SortTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
   self.profile_options = { :runs => 5, :metrics => [:wall_time],
                            :formats => [:flat] }

  def test_sort_in_view
    get '/regions/sort_in_view'
  end

  def test_sort_in_controller
    get '/regions/sort_in_controller'
  end
end
