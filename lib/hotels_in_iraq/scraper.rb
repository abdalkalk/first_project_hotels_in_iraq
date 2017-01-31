class Scrap
 def self.start_nokogiri(city_name)
  Hotel.clear_all
  City.clear_all
  if city_name == "Erbil"
    html=open("http://www.booking.com/searchresults.html?aid=7344259;label=metatripad-link-dmetanar-hotel-572255_xqdz-2160b895b20379275615da7ce1accb60_los-01_bw-052_dom-com_curr-IQD_gst-02_nrm-01_clkid-WInfXgoQIW8AAHE2vB0AAABG_aud-0000_mbl-M_pd-B_sc-2;sid=ab45cb9c3d61edaab36a87657e4bd130;checkin=2017-03-19;checkout=2017-03-20;dest_id=-3106433;dest_type=city;highlighted_hotels=572255;hlrd=12;keep_landing=1;redirected=1;source=hotel&utm_campaign=nar&utm_content=los-01_bw-052_dom-com&utm_medium=dmeta&utm_source=metatripad&utm_term=hotel-572255&")
  else
    html=open("http://www.booking.com/searchresults.en-gb.html?aid=7344259;label=metatripad-link-dmetanar-hotel-572255_xqdz-2160b895b20379275615da7ce1accb60_los-01_bw-052_dom-com_curr-IQD_gst-02_nrm-01_clkid-WInfXgoQIW8AAHE2vB0AAABG_aud-0000_mbl-M_pd-B_sc-2;sid=ab45cb9c3d61edaab36a87657e4bd130;checkin_month=3;checkin_monthday=19;checkin_year=2017;checkout_month=3;checkout_monthday=20;checkout_year=2017;city=-3106433;class_interval=1;dest_id=-3103581;dest_type=city;group_adults=2;group_children=0;highlighted_hotels=805888;hlrd=0;label_click=undef;no_rooms=1;offset=0;qrhpp=49f276a70adc52941d2535c7fc06a945-hotel-0;room1=A%2CA;sb_price_type=total;search_pageview_id=290649fe9fd0018f;search_selected=0;src=searchresults;src_elem=sb;ss=Baghdad;ss_raw=Baghdad;ssb=empty;srpos=5;origin=search")
  end
  doc=Nokogiri::HTML(html)
  doc.css("div#search_results_table")
  doc.css("div#hotellist_inner").children.each do |element|
  hotel_name = element.css("span.sr-hotel__name").text.strip.gsub("\n",'')
  city_name = element.css("div.address").text.strip.gsub("\n",'')
  hotel_describe = element.css("table td p.hotel_desc").text.strip.gsub("\n",'')
  hotel_booking = element.css("span.lastbooking").text.strip.gsub("\n",'')
  hotel_rating = element.css("span.js--hp-scorecard-scoreword").text.strip.gsub("\n",'')
  if hotel_name != ""
  city = City.new(city_name)
  hotel = Hotel.new(hotel_name,city,hotel_rating,hotel_describe,hotel_booking)
 
  end
  end
  end
 # ******************************************************
end
