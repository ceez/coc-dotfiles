(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#184956" "#fa5750" "#75b938" "#dbb32d" "#4695f7" "#f275be" "#41c7b9" "#103c48"])
 '(ansi-term-color-vector
   [unspecified "#14191f" "#d15120" "#81af34" "#deae3e" "#7e9fc9" "#a878b5" "#7e9fc9" "#dcdddd"] t)
 '(beacon-color "#d33682")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#009c8f")
 '(cua-normal-cursor-color "#53676d")
 '(cua-overwrite-cursor-color "#ad8900")
 '(cua-read-only-cursor-color "#489100")
 '(custom-enabled-themes '(adwaita))
 '(custom-safe-themes
   '("7d6861c031212fca9b4a963ced6230be2aa3139570b85ea5e77619b1fd0351ad" "0a4879589b651a17e5a1f54d4fecc306fb8631a138d0e5f8585256189fb6740a" "1b780020c8fe8c91829c06d2a9d5c7d8a182216e479c5b24e787fb1712ffb176" "e068203104e27ac7eeff924521112bfcd953a655269a8da660ebc150c97d0db8" "e222ecd71a927419d2b8bb884f62aca3ad4b1059a7ea16f4b4cc69ad42468af5" "0246dd49de93531a8ef1884cb3dc9cc35026c8dc949daff4a693063abb5af83a" "6313eeb08a54045a6d3945c28ab5a97916334e189cebd9c67c8b72beed0de265" "e28246005845509308f992e6fa8524249e13b65192572c9cc9f412a4c5150373" "3a1a6a9cbff383a7122f7b2e5be7ca3c3951cab4705d2303c887368693c75fd3" "993aac313027a1d6e70d45b98e121492c1b00a0daa5a8629788ed7d523fe62c1" "449a6a03953bf946290f1a0eac09a7de2cf2556aa890f28ad2510a494eb23dcb" "17a2ab161d4d38ff5f4f89ecb68ade0eb35e1087c07960cd94c67d5cfe6ba2a6" "e3da6ebdbfd2321c533c225103999e8e3f5a986cec60bc8505e9f7d82eadbb1b" "f39b5d2d370752da4d2df5ac25051ded1c6350ed571cfab291266b9e2b5a3217" "647a9c8c868397d35ae8bf5c419662e2a53771367f060858f891f9db26a3d764" "c7b8dbc62bf969295d0068d8dcb47bd1832d9c466bd76ddc6ac325b93cbdf7c6" "bd82c92996136fdacbb4ae672785506b8d1d1d511df90a502674a51808ecc89f" "f5a7e07642decb17b03483af7c44e93353d2b128de403bf301651954c628c0ab" "0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8" "f87f74ecd2ff6dc433fb4af4e76d19342ea4c50e4cd6c265b712083609c9b567" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "b273cc6a1d492660fff886a3cae1f00d5fd2d53b55fb374a21a14afd74fdec92" "d1b46cf4414713c0901c3d77b640d857614b220e56c23f00c2fcfe5a2406b05a" "b6c43bb2aea78890cf6bd4a970e6e0277d2daf0075272817ea8bb53f9c6a7f0a" "91c008faf603a28d026957120a5a924a3c8fff0e12331abf5e04c0e9dd310c65" "0ed3d96a506b89c1029a1ed904b11b5adcebeb2e0c16098c99c0ad95cb124729" "1711947b59ea934e396f616b81f8be8ab98e7d57ecab649a97632339db3a3d19" "ee0785c299c1d228ed30cf278aab82cf1fa05a2dc122e425044e758203f097d2" "bddf21b7face8adffc42c32a8223c3cc83b5c1bbd4ce49a5743ce528ca4da2b6" "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d" "19a2c0b92a6aa1580f1be2deb7b8a8e3a4857b6c6ccf522d00547878837267e7" "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe" "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" "df1cbfd16a8af6e821c3299d92c84a0601e961f1be6efd761d6dd40621fde9eb" "3c451787cee570710bff441154a7db8b644cdbb7d270189b2724c6041a262381" "d537a9d42c6f5349d1716ae9be9a0645cc168f7aff2a8353819d570e5d02c0b3" "4d844092dbec5c6fa347ca02c988ed99378b9e05de86a4d437de6370c78633df" "d395c1793e0d64797d711c870571a0033174ca321ed48444efbe640bf692bf4f" "b2779867957a4b9de84bcd33c5ded92e943c710c4c5c5b7fc874786eaf63ca5c" "11873c4fbf465b956889adfa9182495db3bf214d9a70c0f858f07f6cc91cbd47" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "ab04c00a7e48ad784b52f34aa6bfa1e80d0c3fcacc50e1189af3651013eb0d58" "04dd0236a367865e591927a3810f178e8d33c372ad5bfef48b5ce90d4b476481" "7356632cebc6a11a87bc5fcffaa49bae528026a78637acd03cae57c091afd9b9" "bf798e9e8ff00d4bf2512597f36e5a135ce48e477ce88a0764cfb5d8104e8163" "b66970f42d765a40fdb2b6b86dd2ab6289bed518cf4d8973919e5f24f0ca537b" "34af44a659b79c9f92db13ac7776b875a8d7e1773448a8301f97c18437a822b6" "d8fc1d7107a5cc95b96796e15ec1f4014a025aac552879d40b73f295828e1f45" "0851a8045231c27d5274da06aae06c81f9be75d04ba4c3ee43997708d3cf30d1" "c8b83e7692e77f3e2e46c08177b673da6e41b307805cd1982da9e2ea2e90e6d7" "e69be42341c0f622a5092f20a435e5848883ac600e9a91778e424ded786a2311" "f8f81c658c4ac51f83222c0abf6bd17c59f29a6d45b269437d4966c7c3d62c68" "9d102e4e5a140cb4ee987262f8df3f9426b346c0dc5e4bb931cfe54ba9fbb68c" "d3856ef5a26c9f375f4a084af2e89fa215212fe44540deea941d264d00efead4" "46b2d7d5ab1ee639f81bde99fcd69eb6b53c09f7e54051a591288650c29135b0" "7e300d88af7750886190c744f63d2d66580bb2cbb8e371a3cb5109afe3017a5a" "30dc9873c16a0efb187bb3f8687c16aae46b86ddc34881b7cae5273e56b97580" "dde643b0efb339c0de5645a2bc2e8b4176976d5298065b8e6ca45bc4ddf188b7" "250007c5ae19bcbaa80e1bf8184720efb6262adafa9746868e6b9ecd9d5fbf84" "896e4305e7c10f3217c5c0a0ef9d99240c3342414ec5bfca4ec4bff27abe2d2d" "bfc0b9c3de0382e452a878a1fb4726e1302bf9da20e69d6ec1cd1d5d82f61e3d" "35335d6369e911dac9d3ec12501fd64bc4458376b64f0047169d33f9d2988201" "84f6d5b890c59522d765c5610ff75b38d1716683606116cf9354b5fac4c4c35d" "16ab866312f1bd47d1304b303145f339eac46bbc8d655c9bfa423b957aa23cc9" "919fabfc5cb6165ce07b9d8668f78fe75fe8bd08566006bc87513c29b4f34ade" "47d5324dac28a85c1bb84b4c1dc3a8dc407cc7369db6e30d3244b16232b1eec4" "3550eed44e2117521eaa283838987138c27aaadd95208d8cde2bdec8f5f7e689" "1a10896643cce14633f9e2b9f3727761cc528ee7bbbe7e8efeb442e067da1a96" "1c9ba588b7dedc017c5ee7fab0b9c74595a622d94298d9b79633a55091bed503" "27b97024320d223cbe0eb73104f2be8fcc55bd2c299723fc61d20057f313b51c" "6b6bad9d7a844d5de02761a1bd155869512f47bd6a7b14d799eea5c37f08ead4" "b494aae329f000b68aa16737ca1de482e239d44da9486e8d45800fd6fd636780" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "5e3fc08bcadce4c6785fc49be686a4a82a356db569f55d411258984e952f194a" "c45006644b2cff3b7e1d0f97fe9e0da4de63a8d6c33fd291c3dec1ea22a3d02d" "dba3ef5df440dd2746a3b5a048d2123b1db698fa2fa44af1aa294aaf47695deb" "b1726b287955c1f292aa404b6ceefcf5ee98348dc2fc906e04aa5fb70620d4f7" "8146edab0de2007a99a2361041015331af706e7907de9d6a330a3493a541e5a6" "f6665ce2f7f56c5ed5d91ed5e7f6acb66ce44d0ef4acfaa3a42c7cfe9e9a9013" "5111a41453244802afd93eed1a434e612a8afbdf19c52384dffab129258bab6e" "36ca8f60565af20ef4f30783aa16a26d96c02df7b4e54e9900a5138fb33808da" "c7eb06356fd16a1f552cfc40d900fe7326ae17ae7578f0ef5ba1edd4fdd09e58" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "c9ddf33b383e74dac7690255dd2c3dfa1961a8e8a1d20e401c6572febef61045" "28cf1f7cc54ab4ee1ba4a4644046bd661941be92ef8327af56909f340cb9d3d5" "2ab0ac5f4167cca36fb593c7ef7c2cab4d5f560b1805f615e242b50762ba41b3" "57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" "3d4df186126c347e002c8366d32016948068d2e9198c496093a96775cc3b3eaa" "76b4632612953d1a8976d983c4fdf5c3af92d216e2f87ce2b0726a1f37606158" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "45e76a1b1e3bd74adb03192bf8d6eea2e469a1cf6f60088b99d57f1374d77a04" "1bddd01e6851f5c4336f7d16c56934513d41cc3d0233863760d1798e74809b4b" "353ffc8e6b53a91ac87b7e86bebc6796877a0b76ddfc15793e4d7880976132ae" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "67f0f440afa2e68d9d00219b5a56308761af45832fb60769d2b2fd36e3fead45" "745d03d647c4b118f671c49214420639cb3af7152e81f132478ed1c649d4597d" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "6c98bc9f39e8f8fd6da5b9c74a624cbb3782b4be8abae8fd84cbc43053d7c175" "7a7b1d475b42c1a0b61f3b1d1225dd249ffa1abb1b7f726aec59ac7ca3bf4dae" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "dc8ad8b5833ae06e373cc3d64be28e67e6c3d084ea5f0e9e77225b3badbec661" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" "c2aeb1bd4aa80f1e4f95746bda040aafb78b1808de07d340007ba898efa484f5" "1f1b545575c81b967879a5dddc878783e6ebcca764e4916a270f9474215289e5" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "97db542a8a1731ef44b60bc97406c1eb7ed4528b0d7296997cbb53969df852d6" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "5e2cdea6453f8963037723ab91c779b203fb201bf5c377094440f0c465d688ec" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "fa96a61e4eca5f339ad7f1f3442cb5a83696f6a45d9fe2a7bf3b75fc6912bb91" "db7f422324a763cfdea47abf0f931461d1493f2ecf8b42be87bbbbbabf287bfe" "47db50ff66e35d3a440485357fb6acb767c100e135ccdf459060407f8baea7b2" "5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "d268b67e0935b9ebc427cad88ded41e875abfcc27abd409726a92e55459e0d01" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "1a1266e25ed97448bbe80f246f53372d4b914d30802711abfda7afcbf2f7b3ec" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "c4063322b5011829f7fdd7509979b5823e8eea2abf1fe5572ec4b7af1dd78519" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "fe2539ccf78f28c519541e37dc77115c6c7c2efcec18b970b16e4a4d2cd9891d" "998975856274957564b0ab8f4219300bca12a0f553d41c1438bbca065f298a29" "42ec9eaa86da5f052feed0e35b578681015b9e21ab7b5377a5a34ea9a0a9e1b9" "7de0917b4064219c0580397495d47b89a5f93d76724504d0ea8d2eea83542167" "6b234feec8db588ad5ec2a9d9d7b935f7a155104b25ccfb94d921c45a2ff7d22" "9b88b8c64dc30188514f19d1be732ee71cc905b04b0c2c7eb1194528fcebbea4" "aa6638f0cd2ba2c68be03220ea73495116dc6f0b625405ede34087c1babb71ae" "413ba24c4f8a0d187a43d69dc7cbfd8b1d8782739422ba2368eb5f0893f0642a" "8efa3d21b3fa1ac084798fae4e89848ec26ae5c724b9417caf4922f4b2e31c2a" "24cb0b5666e1e17fb6a378c413682f57fe176775eda015eb0a98d65fbb64b127" "ba9c91bc43996f2fa710e4b5145d9de231150103e142acdcf24adcaaf0db7a17" "bdc18d7f41451d56fb89348649647ff5b8475f33e8973ec2a3190460eed9941c" "798590d60c3fe9b453305ae8d5cdf0e6d45c3482af4e805b9f9d5198f0f22342" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "34be6a46f3026dbc0eed3ac8ccf60cba5d2a6ad71aa37ccf21fbd6859f9b4d25" "b0334e8e314ea69f745eabbb5c1817a173f5e9715493d63b592a8dc9c19a4de6" "b89a4f5916c29a235d0600ad5a0849b1c50fab16c2c518e1d98f0412367e7f97" "5eed5311ae09ed84cb2e4bf2f033eb4df27e7846a68e4ea3ab8d28f6b017e44a" "aba75724c5d4d0ec0de949694bce5ce6416c132bb031d4e7ac1c4f2dbdd3d580" "cc8528fcff6ff85ed132ea83e457a58ae0a49168c93bd752a8c446c61fefcdb5" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "4a201d19d8f7864e930fbb67e5c2029b558d26a658be1313b19b8958fe451b55" "b375fc54d0c535bddc2b8012870008055bf29d70eea151869e6ad7aaaadb0d24" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "78e6be576f4a526d212d5f9a8798e5706990216e9be10174e3f3b015b8662e27" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "3a959a1c1765710e5478882053e56650852821e934c3d98f54860dfb91a52626" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "22f080367d0b7da6012d01a8cd672289b1debfb55a76ecdb08491181dcb29626" default))
 '(exwm-floating-border-color "#D0D0E3")
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#4E4E4E")
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'light)
 '(fringe-mode 4 nil (fringe))
 '(global-hl-line-mode t)
 '(highlight-changes-colors '("#ca4898" "#8762c6"))
 '(highlight-symbol-colors
   '("#eba9d812a9a8" "#cb7cde42c838" "#fa08c519ac96" "#e0f3ce2ad7b8" "#d0c1db55a90e" "#f362cd97aa92" "#d0f7d155db7a"))
 '(highlight-symbol-foreground-color "#3a4d53")
 '(highlight-tail-colors
   ((("#dce6e0" "color-22" "green")
     . 0)
    (("#dce8ed" "color-30" "cyan")
     . 20)))
 '(hl-bg-colors
   '("#b08b24" "#c65e21" "#d53926" "#cd488f" "#8355c0" "#4872cb" "#3ea08e" "#569623"))
 '(hl-fg-colors
   '("#fbf3db" "#fbf3db" "#fbf3db" "#fbf3db" "#fbf3db" "#fbf3db" "#fbf3db" "#fbf3db"))
 '(hl-paren-colors '("#009c8f" "#ad8900" "#0072d4" "#8762c6" "#489100"))
 '(hl-sexp-background-color "#efebe9")
 '(indent-tabs-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#D0D0E3" "#009B7C"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#D0D0E3" "#005F00"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#D0D0E3" "#4E4E4E"))
 '(lsp-ui-doc-border "#3a4d53")
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style 'chamfer)
 '(nrepl-message-colors
   '("#ee11dd" "#8584ae" "#b4f5fe" "#4c406d" "#ffe000" "#ffa500" "#ffa500" "#DC8CC3"))
 '(objed-cursor-color "#D70000")
 '(org-agenda-files '("~/org/Subscriptions.org"))
 '(package-selected-packages
   '(epkg epoch-view typescript-mode go-mode zig-mode magit ement dark-krystal-theme dark-mint-theme darkokai-theme darktooth-theme dash-docs dockerfile-mode markdown-mode haskell-mode auto-highlight-symbol auto-virtualenv birds-of-paradise-plus-theme bliss-theme vs-dark-theme vs-light-theme vscdark-theme vscode-dark-plus-theme ujelly-theme undersea-theme vampyricdark-theme vegetative-theme adwaita-dark-theme anti-zenburn-theme apropospriate-theme arjen-grey-theme atom-one-dark-theme atomic-chrome avk-emacs-themes berrys-theme moccur-edit color-moccur xref yaml-mode gruber-darker-theme gruvbox-theme moe-theme ancient-one-dark-theme minsk-theme monokai-alt-theme monokai-pro-theme monotropic-theme mood-one-theme morgentau-theme morrowind-theme mustang-theme mustard-theme modus-themes company-ctags company-erlang company-ghci company-go company-shell badger-theme badwolf-theme angular-mode anki-mode anki-vocabulary bison-mode bnf-mode coq-commenter csharp-mode csound-mode d-mode journalctl-mode jq-format jq-mode jquery-doc json-navigator jtags k8s-mode ssh ssh-agency ssh-config-mode ssh-deploy ssh-tunnels svg swagger-to-org torus treefactor treemacs tok-theme jetbrains jetbrains-darcula-theme jdecomp jenkins jenkinsfile-mode helm-cscope jdee powershell warm-night-theme ample-zen-theme almost-mono-themes abyss-theme ahungry-theme alect-themes ample-theme doom-themes acme-theme zweilight-theme autumn-light-theme stimmung-themes sunburn-theme solo-jazz-theme nordless-theme silkworm-theme snow soft-charcoal-theme soft-morning-theme soft-stone-theme sunny-day-theme nord-theme dracula-theme crdt which-key cmake-font-lock cmake-ide cmake-project eldoc-cmake elf-mode agda2-mode company eglot helm-lsp ccls cider cmake-mode dap-mode flycheck flycheck-clang-analyzer flycheck-clang-tidy ghc helm ivy json-mode lsp-docker lsp-haskell lsp-ivy lsp-java lsp-latex lsp-mode lsp-treemacs lsp-ui xcscope wrap-region web-mode uuid utop use-package undo-tree underwater-theme twittering-mode twilight-theme twilight-bright-theme twilight-anti-bright-theme tuareg toxi-theme thread-dump textmate-to-yas tangotango-theme tango-2-theme syslog-mode svg-mode-line-themes subatomic256-theme subatomic-theme soothe-theme solarized-theme smex smartparens slime scss-mode scala-mode sass-mode rust-mode ruby-tools ruby-end rinari reverse-theme restclient rectangle-utils rainbow-blocks prodigy processing-snippets processing-mode popwin php-mode pcomplete-extension paredit pallet org-grep org-gcal org-elisp-help occidental-theme nyan-mode nexus naquadah-theme mvn mustache-mode multiple-cursors multi-term monokai-theme molokai-theme merlin markdown-mode+ mark-tools mark-multiple man-commands lxc lua-mode log4j-mode leuven-theme kill-ring-search key-chord js3-mode js2-mode jenkins-watch javadoc-lookup java-snippets ir-black-theme idle-highlight-mode htmlize html-script-src highlight-symbol highlight-stages highlight-quoted highlight-parentheses highlight-indentation highlight-escape-sequences highlight hemisu-theme helm-themes helm-pydoc helm-perldoc helm-idris helm-helm-commands helm-go-package helm-github-stars helm-git-grep helm-git-files helm-git helm-flymake helm-flycheck grandshell-theme google-c-style go-snippets go-projectile go-errcheck go-direx go-autocomplete gnu-apl-mode gitignore-mode gitconfig-mode gitattributes-mode git-gutter gist flycheck-pyflakes flycheck-pos-tip flycheck-hdevtools flycheck-haskell flycheck-color-mode-line flycheck-cask expand-region exec-path-from-shell espresso-theme erlang elm-mode elixir-yasnippets elixir-mode el-autoyas ecukes ecb duplicate-thing drag-stuff docbook-snippets django-theme diminish delim-kill dash-functional dash-at-point cyberpunk-theme ctags-update color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized color-theme coffee-mode clojure-snippets cider-decompile chruby chef-mode charmap bbdb apache-mode ant ahg ack-menu ack ac-etags))
 '(pdf-view-midnight-colors (cons "#0F1019" "#F5F5F9"))
 '(pos-tip-background-color "#ece3cc")
 '(pos-tip-foreground-color "#3a4d53")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(red "#ffffff")
 '(rustic-ansi-faces
   ["#F5F5F9" "#D70000" "#005F00" "#AF8700" "#1F55A0" "#AF005F" "#007687" "#0F1019"])
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#489100" "#ece3cc" 0.2))
 '(term-default-bg-color "#fbf3db")
 '(term-default-fg-color "#53676d")
 '(vc-annotate-background "#F5F5F9")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#005F00")
    (cons 40 "#3a6c00")
    (cons 60 "#747900")
    (cons 80 "#AF8700")
    (cons 100 "#bc7900")
    (cons 120 "#c96c00")
    (cons 140 "#D75F00")
    (cons 160 "#c93f1f")
    (cons 180 "#bc1f3f")
    (cons 200 "#AF005F")
    (cons 220 "#bc003f")
    (cons 240 "#c9001f")
    (cons 260 "#D70000")
    (cons 280 "#b41313")
    (cons 300 "#922727")
    (cons 320 "#703a3a")
    (cons 340 "#4E4E4E")
    (cons 360 "#4E4E4E")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-log-types '(((package reinitialization))))
 '(weechat-color-list
   '(unspecified "#fbf3db" "#ece3cc" "#d53926" "#d2212d" "#569623" "#489100" "#b08b24" "#ad8900" "#4872cb" "#0072d4" "#cd488f" "#ca4898" "#3ea08e" "#009c8f" "#53676d" "#fbf3db"))
 '(window-divider-mode nil)
 '(xterm-color-names
   ["#ece3cc" "#d2212d" "#489100" "#ad8900" "#0072d4" "#ca4898" "#009c8f" "#adbcbc"])
 '(xterm-color-names-bright
   ["#fbf3db" "#c25d1e" "#909995" "#fbf3db" "#53676d" "#8762c6" "#3a4d53" "#cad8d9"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "gray80")))))
