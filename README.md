# nixvimcfg

My configuration of [nixvim](https://github.com/nix-community/nixvim)

Heavily inspired by JMartJonesy's [kickstart.nixvim](https://github.com/JMartJonesy/kickstart.nixvim/tree/standalone), [dc-tec/nixvim](https://github.com/dc-tec/nixvim) and the other examples on the [nixvim docs](https://nix-community.github.io/nixvim/user-guide/config-examples.html)

## Configuring

To configure new settings, just add or modify the nix files in `./config`.
If you add a new configuration file, it gets automaticly picked up by
[`config/default.nix`](./config/default.nix)

## Testing the configuration

To test your configuration simply run the following command

```bash
nix run .
```

## Integration in nixosConfiguration or home-manager

Add to flake inputs of nixox configutation flake

 ```nix
inputs.nixvimcfg.url = "github:s-sinnlos/nixvimcfg";
```
And add to nixosConfiguration

```nix
environment.systemPackages = [ inputs.nixvimcfg.packages.${system}.default ];
```

... or to home-manager

```nix
home.packages = [ inputs.nixvimcfg.packages.${system}.default ];
```
