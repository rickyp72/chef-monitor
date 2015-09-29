#
# Cookbook Name:: monitor
# Recipe:: _slack_node_handler
#

sensu_gem 'sensu-plugins-slack' do
  version '0.0.4'
end

sensu_snippet 'slack' do
  content(
    webhook_url: node['monitor']['handlers']['slack']['webhook_url'],
    channel: node['monitor']['handlers']['slack']['channel'],
    bot_name: node['monitor']['handlers']['slack']['bot_name'],
    fields: node['monitor']['handlers']['slack']['fields']
  )
end

sensu_handler 'slack' do
  type 'pipe'
  command 'handler-slack.rb'
  severities %w[ok warning critical unknown]
  timeout node['monitor']['default_handler_timeout']
end
