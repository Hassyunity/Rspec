class ConsolesController < ApplicationController
    def index
        consoles = [
        #    { name:'NES', manufacturer: 'Nintendo' },
        #    { name:'Wii', manufacturer: 'Nintendo' },
        #    { name:'SNES', manufacturer: 'Nintendo' },
        #    { name:'Genesis', manufacturer: 'Nintendo' },
        #    { name:'Switch', manufacturer: 'Nintendo' },
        #    { name:'PS1', manufacturer: 'Nintendo' },
        #    { name:'PS5', manufacturer: 'Nintendo' },
        #    { name:'NES', manufacturer: 'Nintendo' },

                'NES', 
                'SNES',
                'Wii',
                'Genesis',
                'Switch',
                'PS1',
                'PS5'
            
        ]
        render(json: { 'consoles' => consoles })
        # render(json: { 'consoles' => consoles.map { |console| console[:name]} })
    end 
end