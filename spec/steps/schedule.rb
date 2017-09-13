require 'spec_helper'

module Tutu

  step 'Пользователь заходит на сайт "Туту-ру"' do
    @tutu_search = TutuSearch.new
    @tutu_search.load
    binding.pry    
    @tutu_search.trains_chose.click
  end

  step 'вводит станцию отправления "Петровско-Разумовская"' do
    @tutu_search = TutuSearch.new
    @tutu_search.from_destination.click
    @tutu_search.from_destination.send_keys 'Петровско-Разумовское (Лен. напр.)'
  end

  step 'вводит конечный пунт назначения "Тверь"' do
    @tutu_search = TutuSearch.new
    @tutu_search.to_destination.click
    @tutu_search.to_destination.send_keys  'Тверь (Лен. напр.)'
  end

  step 'нажимает кнопку "Найти"' do
    @tutu_search = TutuSearch.new
    @tutu_search.findbuttom_destanation.click
  end

  step 'Пользователь может увидеть расписание поездов "Петровско-Разумовская Тверь"' do
    @tutu_search = TutuSearch.new
	if   @tutu_search.wait_for_scedule_check
        puts 'Расписание успешно отобразилось расписание "Петровско-Разумовская Тверь"'.green
    else
        puts 'Ошибка Расписание не отобразилось'.on_black.blink.colorize(:red)
    end
  end
end

RSpec.configure { |c| c.include Tutu}
