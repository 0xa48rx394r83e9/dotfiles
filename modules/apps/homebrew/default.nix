{ ... }: {
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      cleanup = "zap";
    };

    masApps = {
      "Microsoft 365 (Office)" = 541164041;
      "XCode" = 497799835;
      
    };

    taps = [
      "FelixKratz/formulae"
      "homebrew/cask-fonts"
      "homebrew/services"
    ];

    brews = [
      {
        name = "borders";
        start_service = true;
      }
      "curl"
      "mas"
      "openssh"
      "pinentry-mac"
      "wget"
    ];

    casks = [
      "apparency"
      "betterzip"
      "desktoppr"
      "dockdoor"
      "font-hack-nerd-font"
      "jordanbaird-ice"
      "kitty"
      "monitorcontrol"
      "mtmr"
      "obsidian"
      "qlmarkdown"
      "quicklook-json"
      "raycast"
      "sf-symbols"
      "spotify"
      "stats"
      "visual-studio-code@insiders"
      "syntax-highlight"
    ];
  };
}