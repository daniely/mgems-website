class DanielController < ApplicationController
  def update
    @status = 'failed update'

    list = HTTParty.get('https://api.github.com/repos/bovi/mgem-list/contents')
    mgem_list = JSON.parse(list.body)

    mgem_list.each do |info|
      begin
        url = "https://api.github.com/repos/#{info['html_url'].gsub('https://github.com/', '')}".gsub('/blob/master', '/contents')
        next if url.split('/').last == 'README.md'
        mgem_info = HTTParty.get(url)
        mgem_params = {}
        Base64.decode64(mgem_info['content']).split("\n").each { |a| mgem_params[a.split(': ').first] = a.split(': ').last }

        Mgem.create(mgem_params) if Mgem.where(:name => mgem_params[:name]).blank?
      rescue
        # keep on trucking as we probably hit rate limit
      end
    end
  end
end
