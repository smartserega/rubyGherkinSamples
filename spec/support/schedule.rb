require 'spec_helper'

class TutuSearch< SitePrism::Page
   set_url "https://www.tutu.ru/"
   element :from_destination, '.input_field.j-station_input.j-station_input_from'
   element :trains_chose, '.tab.t-ttl_third.tab_etrain.j-tab'
   element :to_destination, ".input_field.j-station_input.j-station_input_to[placeholder='Куда']"
   element :findbuttom_destanation,'.b-button__arrow__button.j-button.j-button-submit._title.j-submit_button._blue'
   element :scedule_check, '.t-ttl', text:'Расписание электричек Петровско-Разумовское → Тверь'
end
