# dotfiles

## Initialize

#### First Time Download

 - `curl -L https://github.com/JayNewstrom/dotfiles/archive/master.zip --output dotfiles.zip`
 - `unzip dotfiles.zip`
 - `cd dotfiles-master`
 - Now you can run the steps under Run
 - It's probably best to properly clone the repo, and relaunch the `./dotfileInitialization.sh` script once everything is done for the first time. 
 - Open https://github.com/jaynewstrom.gpg and copy into gpg keychain, and trust ultimately - Ideally this is scripted.

#### Run

 - `./machineInitialization.sh`
 - `./.macos`
 - `./dotfileInitialization.sh`

## License

    Copyright 2020 Jay Newstrom

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
