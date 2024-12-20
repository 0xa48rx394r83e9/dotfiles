{ pkgs, username, ... }:

{
  xdg.enable = true;

  home.packages = with pkgs; [
    # tools
    aria2
    caddy
    cairo
    cmake
    cocoapods
    cowsay
    docker
    file
    flyctl
    fzf
    gawk
    gcc-arm-embedded
    glow
    google-cloud-sdk
    gnupg
    gnutar
    gnused
    jq
    kompose
    kubectl
    mas
    nmap
    p7zip
    pango
    pixman
    pkg-config
    ripgrep
    socat
    sox
    tree
    turso-cli
    unzip
    which
    xz
    yq-go
    zip
    zstd

    # languages
    lua5_4
    python312
    uv
    nodejs_20
    nodePackages.pnpm
    bun
    rustup
    jdk
    go
  ];

  programs.man = {
    enable = true;
    generateCaches = true;
  };

  home = {
    username = username;
    homeDirectory = "/Users/${username}";
    stateVersion = "23.11";
  };

  programs.gpg.enable = true;
  # services.gpg-agent.enable = true;

  imports = [
    ./config/borders
    ./config/eza
    ./config/git
    ./config/neovim
    ./config/sketchybar
    ./config/skhd
    ./config/skim
    ./config/starship
    ./config/yabai
    ./config/zsh
  ];

  programs.home-manager.enable = true;
}
