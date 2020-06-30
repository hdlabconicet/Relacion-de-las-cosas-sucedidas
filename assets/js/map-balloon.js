/*
 * Basado en MiniPreview v0.9 de  Will Boyd
 */

(function($) {
    var PREFIX = 'mini-preview';
    
    // implemented as a jQuery plugin
    $.fn.miniPreview = function(options) {
        return this.each(function() {
            var $this = $(this);
            var miniPreview = $this.data(PREFIX);
            if (miniPreview) {
                miniPreview.destroy();
            }

            miniPreview = new MiniPreview($this, options);
            miniPreview.generate();
            $this.data(PREFIX, miniPreview);
        });
    };
    
    var MiniPreview = function($el, options) {
        this.$el = $el;
        this.$el.addClass(PREFIX + '-anchor');
        this.options = $.extend({}, this.defaultOptions, options);
        this.counter = MiniPreview.prototype.sharedCounter++;
    };
    
    MiniPreview.prototype = {
        sharedCounter: 0,
        
        defaultOptions: {
            width: 350,
            height: 250,
            
        },
                
        generate: function() {
            this.createElements();
            
            //cambiar a on click
            this.$el.on(
                this.getNamespacedEvent('mouseenter'),
                this.loadPreview.bind(this)
            );
        },

        createElements: function() {
            var $wrapper = $('<div>', { class: PREFIX + '-wrapper' });
            var $loading = $('<div>', { class: PREFIX + '-loading' });
            var $frame = $('<div id="map'+this.counter+'" class="map leaflet-container">');
            var $cover = $('<div>', { class: PREFIX + '-cover' });
            $wrapper.appendTo(this.$el).append($loading, $frame, $cover);
            
            // sizing
            $wrapper.css({
                width: this.options.width + 'px',
                height: this.options.height + 'px'
            });
            
            // scaling
            $frame.css({
                width: '350px',
                height: '250px',
                position:'relative'
                
            });

            // positioning
            var fontSize = parseInt(this.$el.css('font-size').replace('px', ''), 10)
            var top = (this.$el.height() + fontSize) / 2;
            var left = (this.$el.width() - $wrapper.outerWidth()) / 2;
            $wrapper.css({
                top: top + 'px',
                left: left + 'px'
            });
        },


        loadPreview: function() {       
            var lugar = this.$el.text().trim();
            var coordenadas = acaretePlaces[lugar] // acaretePlaces esta definido en acarete-places.js            
            var map = L.map('map'+this.counter).setView(coordenadas, 3);
            L.tileLayer('http://{s}.tiles.mapbox.com/v3/jamesg87.goac2bf1/{z}/{x}/{y}.png', {
                attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
                maxZoom: 18
            }).addTo(map);
            var marker = L.marker(coordenadas).addTo(map);
            marker.bindPopup(lugar);
        },
        
        getNamespacedEvent: function(event) {
            return event + '.' + PREFIX + '_' + this.counter;
        },

        destroy: function() {
            //cambiar a on click
            this.$el.removeClass(PREFIX + '-anchor');
            this.$el.parent().off(this.getNamespacedEvent('mouseenter'));
            this.$el.off(this.getNamespacedEvent('mouseenter'));
            this.$el.find('.' + PREFIX + '-wrapper').remove();
        }
    };
})(jQuery);