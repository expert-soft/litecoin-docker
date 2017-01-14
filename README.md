# litecoin-docker

1. git clone https://github.com/expert-soft/litecoin-docker.git
2. docker build -t litecoin-docker litecoin-docker/
3. mkdir litecoin_data
4. cp litecoin-docker/litecoin.conf litecoin_data/
5. docker run -d -v {$PWD}/litecoin_data:/root/litecoin/data litecoin-docker /bin/bash -c "/root/litecoin/app/start.sh"

## License

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
