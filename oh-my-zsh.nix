# configuration.nix

# for global user
users.defaultUserShell=pkgs.zsh; 

# For a specific user
users.users.<my-username>.shell = pkgs.zsh; 
# users.users.officialrajdeepsingh.shell = pkgs.zsh;

# enable zsh and oh my zsh
programs = {
   zsh = {
      enable = true;
      autosuggestions.enable = true;
      zsh-autoenv.enable = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
         enable = true;
         theme = "robbyrussell";
         plugins = [
           "git"
           "npm"
           "history"
           "node"
           "rust"
           "deno"
         ];
      };
   };
};