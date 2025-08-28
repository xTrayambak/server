{ }:
{
  services.openssh = {
    enable = true;
    settings = {
      X11Forwarding = false; # We don't need this.
      PrintMotd = true;
      banner = ''
        Number 15: Burger King Foot Lettuce

        The last thing you want in your Burger King burger, is someone else's foot fungus.
        Unfortunately, this might be what you get.
        			'';
    };
  };
}
