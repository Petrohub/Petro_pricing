module ApplicationHelper

  def image_for(station)
    case station.brand
    when 'Amoco'
      image_tag('amoco.jpg', height: '230', width: '230')
    when 'ARCO'
      image_tag('arco.jpg', height: '230', width: '230')
    when 'BP'
      image_tag('bp.jpg', height: '230', width: '230')
    when 'Chevron'
      image_tag('chevron.jpeg', height: '230', width: '230')
    when 'Circle K'
      image_tag('circlek.gif', height: '230', width: '230')
    when 'Citgo'
      image_tag('citgo.jpg', height: '230', width: '230')
    when 'Clark Brands'
      image_tag('clark.jpg', height: '230', width: '230')
    when 'Costco'
      image_tag('costco.jpg', height: '230', width: '230')
    when 'Cumberland Farms'
      image_tag('cumberland.jpg', height: '230', width: '230')
    when 'Exxon'
      image_tag('exxon.png', height: '230', width: '230')
    when 'Flying J'
      image_tag('FLYING_J.jpg', height: '230', width: '230')
    when 'Gas City, Ltd.'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Getty'
      image_tag('getty.jpg', height: '230', width: '230')
    when 'Go-Mar'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Gulf'
      image_tag('gulf.jpg', height: '230', width: '230')
    when 'Hess'
      image_tag('hess.jpg', height: '230', width: '230')
    when 'High\'s Dairy Stores'
      image_tag('highs.jpeg', height: '230', width: '230')
    when 'Holiday'
      image_tag('holiday.jpg', height: '230', width: '230')
    when 'Irving Oil'
      image_tag('irving.png', height: '230', width: '230')
    when 'Kroger brand gasoline'
      image_tag('kroger.png', height: '230', width: '230')
    when 'Kum & Go'
      image_tag('kum.gif', height: '230', width: '230')
    when 'Kwik Trip'
      image_tag('kwiktrip.jpg', height: '230', width: '230')
    when 'Love\'s'
      image_tag('loves.jpg', height: '230', width: '230')
    when 'Marathon Oil'
      image_tag('marathon.png', height: '230', width: '230')
    when 'Lukoil'
      image_tag('lukoil.png', height: '230', width: '230')
    when 'Mobil'
      image_tag('mobil.png', height: '230', width: '230')
    when 'Murphy USA'
      image_tag('murphy.png', height: '230', width: '230')
    when 'Phillips 66'
      image_tag('phillips66.jpg', height: '230', width: '230')
    when 'Pilot'
      image_tag('pilot.jpg', height: '230', width: '230')
    when 'QuickChek'
      image_tag('quickchek.png', height: '230', width: '230')
    when 'QuikTrip'
      image_tag('quicktrip.jpg', height: '230', width: '230')
    when 'RaceTrac/Raceway'
      image_tag('racetrac.jpg', height: '230', width: '230')
    when 'Shell'
      image_tag('shell.png', height: '230', width: '230')
    when 'Royal Farms'
      image_tag('royalfarms.png', height: '230', width: '230')
    when 'Rutter\'s Farm Stores'
      image_tag('default.jpg', height: '230', width: '230')
    when '7-Eleven brand gasoline'
      image_tag('711.png', height: '230', width: '230')
    when '76'
      image_tag('76.png', height: '230', width: '230')
    when 'Sam\'s Club'
      image_tag('samsclub.png', height: '230', width: '230')
    when 'Sheetz'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Sinclair'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Speedway'
      image_tag('speedway.png', height: '230', width: '230')
    when 'Spinx'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Sunoco'
      image_tag('sunoco.png', height: '230', width: '230')
    when 'Texaco'
      image_tag('texaco.png', height: '230', width: '230')
    when 'Travelcenters of America'
      image_tag('default.jpg', height: '230', width: '230')
    when 'Valero'
      image_tag('valero.png', height: '230', width: '230')
    when 'Wawa'
      image_tag('wawa.jpg', height: '230', width: '230')
    else
      image_tag('default.jpg', height: '230', width: '230')
    end
  end

  def us_states
    [
      %w(Alabama AL),
      %w(Alaska AK),
      %w(Arizona AZ),
      %w(Arkansas AR),
      %w(California CA),
      %w(Colorado CO),
      %w(Connecticut CT),
      %w(Delaware DE),
      ['District of Columbia', 'DC'],
      %w(Florida FL),
      %w(Georgia GA),
      %w(Hawaii HI),
      %w(Idaho ID),
      %w(Illinois IL),
      %w(Indiana IN),
      %w(Iowa IA),
      %w(Kansas KS),
      %w(Kentucky KY),
      %w(Louisiana LA),
      %w(Maine ME),
      %w(Maryland MD),
      %w(Massachusetts MA),
      %w(Michigan MI),
      %w(Minnesota MN),
      %w(Mississippi MS),
      %w(Missouri MO),
      %w(Montana MT),
      %w(Nebraska NE),
      %w(Nevada NV),
      ['New Hampshire', 'NH'],
      ['New Jersey', 'NJ'],
      ['New Mexico', 'NM'],
      ['New York', 'NY'],
      ['North Carolina', 'NC'],
      ['North Dakota', 'ND'],
      %w(Ohio OH),
      %w(Oklahoma OK),
      %w(Oregon OR),
      %w(Pennsylvania PA),
      ['Puerto Rico', 'PR'],
      ['Rhode Island', 'RI'],
      ['South Carolina', 'SC'],
      ['South Dakota', 'SD'],
      %w(Tennessee TN),
      %w(Texas TX),
      %w(Utah UT),
      %w(Vermont VT),
      %w(Virginia VA),
      %w(Washington WA),
      ['West Virginia', 'WV'],
      %w(Wisconsin WI),
      %w(Wyoming WY)
    ]
  end

 

  def fuel_brands
    [
      'Amoco',
      'ARCO',
      'BP',
      'Chevron',
      'Circle K',
      'Citgo',
      'Clark Brands',
      'Costco',
      'Cumberland Farms',
      'Exxon',
      'Flying J',
      'Gas City, Ltd.',
      'Getty',
      'Go-Mar',
      'Gulf',
      'Hess',
      'High\'s Dairy Stores',
      'Holiday',
      'Irving Oil',
      'Kroger brand gasoline',
      'Kum & Go',
      'Kwik Trip',
      'Love\'s',
      'Lukoil',
      'Marathon Oil',
      'Mobil',
      'Murphy USA',
      'Phillips 66',
      'Pilot',
      'QuickChek',
      'QuikTrip',
      'RaceTrac/Raceway',
      'Shell',
      'Royal Farms',
      'Rutter\'s Farm Stores',
      '7-Eleven brand gasoline',
      '76',
      'Sam\'s Club',
      'Sheetz',
      'Sinclair',
      'Speedway',
      'Spinx',
      'Sunoco',
      'Texaco',
      'Travelcenters of America',
      'Valero',
      'Wawa'
    ]
  end
end
