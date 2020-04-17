#
# Golang port of Open Chinese Convert
#
# Copyright 2018 Zhanliang Liu <liang@zliu.org>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# Go parameters
default: gen
tools:
	@echo "Installing tools"
	go get -u github.com/rakyll/statik@v0.1.6

gen: tools
	statik -src=./static
