class FortunesController < ApplicationController
  def horoscopes
    @zodiac_name = params.fetch("the_sign")

    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@zodiac_name.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end

    render({ :template => "all_zodiac/all_zodiac.html.erb" })
  end
end