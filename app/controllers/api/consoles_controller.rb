class Api::ConsolesController < ApplicationController
    def index
        consoles = [
           { name:'NES', manufacturer: 'Nintendo' },
           { name:'SNES', manufacturer: 'Nintendo' },
           { name:'Wii', manufacturer: 'Nintendo' },
           { name:'Genesis', manufacturer: 'Sega' },
           { name:'Switch', manufacturer: 'Nintendo' },
           { name:'PS1', manufacturer: 'Sony' },
           { name:'PS5', manufacturer: 'Sony' }

                # 'NES', 
                # 'SNES',
                # 'Wii',
                # 'Genesis',
                # 'Switch', 
                # 'PS1',
                # 'PS5'
            
        ]

        if params[:manufacturer].present?
            consoles = consoles.select do |console|
                console[:manufacturer] == params[:manufacturer]
            end
        end

        # render(json: { 'consoles' => consoles })
        render(json: { 'consoles' => consoles.map { |console| console[:name]} })
    end 
end