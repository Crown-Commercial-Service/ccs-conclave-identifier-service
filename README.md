<!-- PROJECT SHIELDS -->
[![Workflow][workflow-shield]][workflow-url]
[![Issues][issues-shield]][issues-url]
[![Version][version-shield]][version-url]
[![Stargazers][stars-shield]][stars-url]
[![Forks][forks-shield]][forks-url]
[![Contributors][contributors-shield]][contributors-url]


<!-- PROJECT LOGO -->
<br>
<div align="center">
  <a href="https://github.com/Crown-Commercial-Service">
    Crown-Commercial-Service :)
  </a><br><br>
  <div align="center"><h1>Conclave Identifier Service</h1>A ruby rails powered API</div>
  <div align="right">
    <br>
    <a href="https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/blob/develop/README.md"><strong>Documentation »</strong></a>
    <br>
    <a href="#usage">View Usage</a>
    ·
    <a href="https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/issues">Report Bug</a>
    ·
    <a href="https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/issues">Request Feature</a>
  </div>
</div>



<!-- TABLE OF CONTENTS -->
<details open="open" style="padding:4px;display:inline;border-width:1px;border-style:solid;">
  <summary><b style="display: inline-block"><u>Contents</u></b></summary>
    <ol>
        <li>
        <a href="#about-this-project">About</a>
        <ul>
            <li><a href="#tech-stack">Tech Stack</a></li>
        </ul>
        </li>
        <li>
        <a href="#setup">Setup</a>
        <ul>
            <li><a href="#prerequisites">Prerequisites</a></li>
            <li><a href="#installation">Installation</a></li>
        </ul>
        </li>
        <li><a href="#usage">Usage</a></li>
        <li><a href="#roadmap">Roadmap</a></li>
        <li><a href="#changelog">Changelog</a></li>
        <li><a href="#contact">Contact</a></li>
    </ol>
</details><hr><br>



<!-- ABOUT THis PROJECT -->
## About This Project
The Crown Commercial Service's Contingency ID Service, for Conclave/PPG. A service to assign a ccs identifier to organisations that don't have a Companies House, Charities, NHS, or DUNs number.

### Tech Stack
* [Ruby-on-Rails](https://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org)
* [CloudFoundry](https://www.cloudfoundry.org/)
* [Travis](https://www.travis-ci.com/)
* [Rollbar](https://rollbar.com/)
* [Rubocop](https://rubocop.org/)
* [CodeClimate](https://codeclimate.com/)
* [Snyk](https://snyk.io/)

<br><hr><br>



<!-- SETUP -->
## Setup
For help or guidance in downloading and running the application, see the following subsections.
<br>

#### Prerequisites
[You must have npm (node package manager) and Nodejs installed on your system.](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)<br>
[You must also have rails installed on your system.](https://guides.rubyonrails.org/v5.0/getting_started.html)<br>
[Finally, you must have postgresql installed on your system.](https://www.postgresql.org)

<br>

#### Installation
1. Clone/Download:
  ```sh
  git clone https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service.git
  ```
2. Install:
  ```sh
  bundle install
  ```
3. Start:
  ```sh
  rails s
  ```

<br><hr><br>



<!-- USAGE EXAMPLES -->
## Usage

| Endpoint | Action/Desc. | Full URI <i>(hosted locally, for some port; e.g.: 3000)</i> | Request Type |
|:---|:---|:---|:---|
| <ul><li>"/"</li></ul> | Index:<br>Returns empty 200 status response. | <ul><li>"http://localhost:3000/"</li></ul> | GET |

<br><hr><br>



<!-- ROADMAP -->
## Roadmap
Below is a planned roadmap. See [open issues][issues-url] for any other proposed features or known issues, which may not be listed below.

| Feature/Task/Bugfix | Details | Version <i>(if released)</i> | Notes |
|:---|:---|:---|:---|
| <i>Bug#1</i> | <i>Bug details...</i> | <i>0.0.1</i> | <i>example#1</i> |
| <i>Feature#4</i> | <i>Feature details...</i> |   | <i>example#2</i> |

<br><hr><br>



<!-- CHANGELOG -->
## Changelog

| Version | Date | Pull Request Number | Changes Description |
|:---|:---|:---|:---|
| 0.0.1 | 2022-04-20 | #1 | <ul><li>Initial Developer Commit.</li><li>Add initial directory structure and files.</li><li>Update README.md</li></ul> |
| 0.0.2 | 2022-04-21 | #2 | <ul><li>Tidy up unnecessary repo files.</li><li>Update README.md</li></ul> |
| 0.0.3 | 2022-04-21 | #3 | <ul><li>Update ruby version to fix buildpack issue on CF delpoy.</li><li>Update README.md</li></ul> |

<br><hr><br>


<!-- CONTACT -->
### Contact

<b>Tom Berey</b>; <i>Developer</i>;<br>thomas.berey@crowncommercialservice.gov.uk;

* [Issues & Requests][issues-url]
* [CCS Projects](https://github.com/Crown-Commercial-Service?tab=repositories)
* [CCS Website](https://www.crowncommercial.gov.uk/)

<br>

<br>

<i>

### Outstanding Questions:

#### 1) Endpoint is now POST, from GET.

#### 2) id-type is now id_type.

#### 3) Capitalize id_type, so 'CCS-123456'.

#### 4) What defines 'persisted' as either true/false?

#### 5) How are the batch (count = 5) identifiers connected/being used? All to one organization? etc.

</i>

<br>

<!-- SPECIFIC URLS - NEED CHANGING PER PROJECT -->
[workflow-shield]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/actions/workflows/codeql-analysis.yml/badge.svg
[workflow-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/actions
[version-shield]: https://img.shields.io/github/v/release/Crown-Commercial-Service/social-stocks
[version-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/releases/
[stars-shield]: https://img.shields.io/github/stars/Crown-Commercial-Service/social-stocks.svg
[stars-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/stargazers
[contributors-shield]: https://img.shields.io/github/contributors/Crown-Commercial-Service/social-stocks.svg
[contributors-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Crown-Commercial-Service/social-stocks.svg
[forks-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/network/members
[issues-shield]: https://img.shields.io/github/issues/Crown-Commercial-Service/social-stocks.svg
[issues-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/issues
[project-url]: https://github.com/Crown-Commercial-Service/ccs-conclave-identifier-service/projects
