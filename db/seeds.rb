# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
regions = {
  "Africa"=>["Sri Lanka", "Tanzania", "Djibouti", "Togo", "Zimbabwe", "Seychelles", "Algeria", "Mozambique", "Madagascar", "Mauritania", "Sao Tome And Principe", "Swaziland", "Burundi", "Benin", "Eritrea", "Kenya", "Malawi", "Nigeria", "Morocco", "Egypt", "Namibia", "Angola", "Mauritius", "South Africa", "Guinea", "Gabon", "Tunisia", "Cape Verde", "Mali", "Chad", "Cote D Ivoire", "Ethiopia", "Ghana", "Gambia", "Libya", "Uganda", "Cameroon", "Burkina Faso", "Western Sahara", "Lesotho", "Zambia", "Reunion", "Liberia", "Rwanda", "Senegal"],
  "Asia"=>["India", "Brunei", "South Korea", "Japan", "Laos", "Myanmar", "Maldives", "Hong Kong", "American Samoa", "Indonesia", "Nepal", "Taiwan", "Malaysia", "Cambodia", "China", "Singapore", "Philippines", "Bangladesh", "Bhutan", "Mongolia", "Vietnam", "Thailand", "Uzbekistan"],
  "Europe"=>["Belgium", "Hungary", "Luxembourg", "Finland", "Monaco", "Yemen", "Iceland", "Faroe Islands", "Gibraltar", "San Marino", "Poland", "Norway", "Andorra", "Cyprus", "Italy", "Bosnia And Herzegovina", "Latvia", "Greenland", "Netherlands", "United Kingdom", "Germany", "Lithuania", "Austria", "Portugal", "Denmark", "France", "Spain", "Switzerland", "Croatia", "Czech Republic", "Greece", "Estonia", "Malta", "Romania", "Albania", "Serbia", "Slovakia", "Macedonia", "Liechtenstein", "Montenegro", "Ireland", "Sweden", "Slovenia", "Ukraine", "Kosovo"], "Middle East"=>["Turkey", "Qatar", "Azerbaijan", "Lebanon", "Oman", "Moldova", "Jordan", "Israel", "Kuwait", "Georgia", "Syria", "Bahrain", "Saudi Arabia", "United Arab Emirates", "Bulgaria", "Iran", "Kazakhstan", "Pakistan", "Botswana", "Belarus", "Armenia", "Tajikistan", "Kyrgyzstan", "Palestinian Territory Occupied", "Afghanistan"],
  "Oceania"=>["New Zealand", "Russia", "Vanuatu", "Norfolk Island", "French Polynesia", "Cook Islands", "Fiji", "Australia", "Northern Mariana Islands", "New Caledonia", "Samoa", "Tonga", "Palau", "Solomon Islands", "Federated States Of Micronesia", "Cocos Keeling Islands"],
  "America"=>["Bahamas", "Venezuela", "Colombia", "Guadeloupe", "Guatemala", "Grenada", "Uruguay", "Antigua And Barbuda", "Chile", "Costa Rica", "Canada", "Bolivia", "Honduras", "Papua New Guinea", "Peru", "Brazil", "Argentina", "Ecuador", "Anguilla", "Puerto Rico", "Dominican Republic", "Guam", "United States", "Aruba", "Paraguay", "Mexico", "Barbados", "Saint Lucia", "Panama", "Martinique", "French Guiana", "Virgin Islands Us", "Guyana", "Cuba", "Jamaica", "Cayman Islands", "Haiti", "Nicaragua", "Dominica", "Saint Kitts And Nevis", "Suriname", "Bermuda", "Curacao", "Belize", "Saint Vincent And The Grenadines", "Bonaire Saint Eustatius And Saba", "Sint Maarten", "Montserrat", "Virgin Islands British", "El Salvador", "Trinidad And Tobago"]}

regions.each do |r_name,countries|
  r = Region.find_or_create_by_name(r_name)
  countries.each do |c_name|
    if c = Country.find_by_name(c_name)
      r.country = c
    else
      r.countries.create(name:c_name)
    end
  end
end
