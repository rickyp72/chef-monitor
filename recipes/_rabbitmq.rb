#
# Cookbook Name:: monitor
# Recipe:: _rabbitmq
#
# Copyright 2013, Sean Porter Consulting
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'monitor::default'

include_recipe 'build-essential::default'

# sensu_gem 'carrot-top'

sensu_gem 'sensu-plugins-rabbitmq' do
  version '0.0.3'
end
