<div id="top"></div>


<!-- PROJECT SHIELDS -->
<div align="center">
  
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![Twitter][twitter-shield]][twitter-url]

</div>



<!-- PROJECT HEADER -->
  <h3 align="center">CanaryWriter</h3>

  <p align="center">
    A CLI tool for creating signed canary statements.
    <br />
    <br />
    <a href="https://delvesmediagroup.com/">Visit Our Site</a>
    ·
    <a href="https://github.com/delvesmedia/CanaryWriter/issues">Report Bug</a>
    ·
    <a href="https://github.com/delvesmedia/CanaryWriter/issues">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-canarywriter">About CanaryWriter</a></li>
    <li><a href="#prerequisites">Prerequisites</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>



<!-- ABOUT CANARYWRITER -->
## About CanaryWriter

We have to admit, creating canary statements can be **long** (especially if you have to do it often). We created CanaryWriter to help people create signed canary statements easily. We use CanaryWriter in-house to create our own canary statements. You can check them out [here](https://delvesmediagroup.com/canaries)!


### What are canary statements (a.k.a warrant canaries)?

> A warrant canary is a colloquial term for a regularly published statement that a service provider has not received legal process that it would be prohibited from saying it had received. Once a service provider does receive legal process, the speech prohibition goes into place, and the canary statement is removed.
>
> Warrant canaries are often provided in conjunction with a transparency report, listing the process the service provider can publicly say it received over the course of a particular time period. The canary is a reference to the canaries used to provide warnings in coalmines, which would become sick before miners from carbon monoxide poisoning, warning of the danger.

~ [Electronic Frontier Foundation](https://www.eff.org/deeplinks/2014/04/warrant-canary-faq)

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- PREREQUISITES -->
## Prerequisites

To use CanaryWriter, you'll need to install a few packages. We reccomend using [Homebrew] to do this.
* [rsstail]
  ```sh
  brew install rsstail
  ```
  
* [gnupg]
  ```sh
  brew install gnupg
  ```
  You'll also need to create or import a PGP key to sign your canary statements. Information on how to do this can be found [here](https://help.ubuntu.com/community/GnuPrivacyGuardHowto#Generating_an_OpenPGP_Key).
  
<p align="right">(<a href="#top">back to top</a>)</p>
  
  
  
<!-- USAGE -->
## Usage

* Download the contents of this repository (preferably using `git`).
  ```sh
  git clone https://github.com/delvesmedia/CanaryWriter.git
  ```
  
* Change directory to the location where you downloaded CanaryWriter.
  ```sh
  cd /users/rickastley/Downloads/CanaryWriter/
  ```
  
* Fill out `signers.txt`, `statement.txt` and `announcements.txt` with relevant information in your preferred text editor (e.g `nano`).
  ```sh
  nano statement.txt
  ```
  
* Run CanaryWriter and follow the onscreen instructions.
  ```sh
  ./canarywriter.sh
  ```

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that could make CanaryWriter better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- LICENSE -->
## License

Distributed under The GNU General Public License v3.0. See `LICENSE.txt` for more information.

<p align="right">(<a href="#top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/delvesmedia/CanaryWriter.svg?style=for-the-badge
[contributors-url]: https://github.com/delvesmedia/CanaryWriter/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/delvesmedia/CanaryWriter.svg?style=for-the-badge
[forks-url]: https://github.com/delvesmedia/CanaryWriter/network/members
[stars-shield]: https://img.shields.io/github/stars/delvesmedia/CanaryWriter.svg?style=for-the-badge
[stars-url]: https://github.com/delvesmedia/CanaryWriter/stargazers
[issues-shield]: https://img.shields.io/github/issues/delvesmedia/CanaryWriter.svg?style=for-the-badge
[issues-url]: https://github.com/delvesmedia/CanaryWriter/issues
[license-shield]: https://img.shields.io/github/license/delvesmedia/CanaryWriter.svg?style=for-the-badge
[license-url]: https://github.com/delvesmedia/CanaryWriter/blob/master/LICENSE.txt
[twitter-shield]: https://img.shields.io/twitter/follow/DELVESmedia?color=CEFF00&style=for-the-badge
[twitter-url]: https://twitter.com/DELVESmedia
[Homebrew]: https://brew.sh/
[rsstail]: https://www.vanheusden.com/rsstail
[gnupg]: https://gnupg.org/
