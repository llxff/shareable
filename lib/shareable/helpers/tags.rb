require 'active_support/core_ext/object/blank.rb'

module Shareable
  module Helpers
    class Tag
      def initialize(template, options = {}) #:nodoc:
        @template, @options = template, options.dup
      end

      def to_s(locals = {}) #:nodoc:
        @template.render :partial => "shareable/#{self.class.name.demodulize.underscore}", :locals => @options.merge(locals)
      end
    end

    class Socialize < Tag
      def to_s(locals={}) #:nodoc:
        locals[:options] ||= {}
        social_site = self.class.name.demodulize.downcase.to_sym
        if @options[:options]
          @options[:filtered] ||= @options[:options].reject {|opt| locals[:options].include?(opt)}
          locals[:options].merge!(@options[:filtered])
        end
        if @options[social_site]
          locals[:options].merge!(@options[social_site])
        end
        super locals
      end
    end

    class Facebook < Socialize
    end

    class GooglePlus < Socialize
    end

    class Linkedin < Socialize
    end

    class Vkontakte < Socialize
      def to_s(locals={})
        button_settings = []
        button_settings << add_url
        button_settings << add_title
        button_settings << add_description
        button_settings << add_image_link
        button_settings << add_noparse_opt

        button_settings.compact!

        if button_settings.present?
          locals[:share_button_settings] = "{ #{button_settings.join(',')} }"
        end

        super locals
      end

    protected

      def add_url
        if @options[:page_url]
          "url: '#{@options[:page_url]}'"
        end
      end

      def add_title
        if @options[:post_title]
          "title: '#{@options[:post_title]}'"
        end
      end

      def add_description
        if @options[:post_description]
          "description: '#{@options[:post_description]}'"
        end
      end

      def add_image_link
        if @options[:image_link]
          "image: '#{@options[:image_link]}'"
        end
      end

      def add_noparse_opt
        if @options[:noparse].is_a?(TrueClass) || @options.is_a?(FalseClass)
          "noparse: #{@options[:noparse]}"
        end
      end
    end

    class Odnoklassniki < Socialize
    end

    class Pinterest < Socialize
      def to_s(locals={}) #:nodoc:
        locals[:options] ||= {}
        unless @options[:options].blank?
          p_opts = {:description => CGI::escape(@options[:options][:description] ? @options[:options][:description] : '' ),
                    :url => CGI::escape(@options[:options][:url] ? @options[:options][:url] : ''),
                    :media => CGI::escape(@options[:options][:media] ? @options[:options][:media] : '')}
          locals[:options].merge!(@options[:options].merge(p_opts))
          if @options[:pinterest]
            @options[:pinterest][:description] = CGI::escape(@options[:pinterest][:description]) if @options[:pinterest][:description]
            @options[:pinterest][:url] = CGI::escape(@options[:pinterest][:url]) if @options[:pinterest][:url]
            @options[:pinterest][:media] = CGI::escape(@options[:pinterest][:media]) if @options[:pinterest][:media]
          end
        end
        super locals
      end
    end

    class Reddit < Socialize
    end

    class Twitter <  Socialize
    end
  end
end
