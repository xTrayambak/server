{
  services.openssh = {
    enable = true;
    settings = {
      X11Forwarding = false; # We don't need this.
    };
  };
}
