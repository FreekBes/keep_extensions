# Codam Automatic Extension Installer for Google Chrome
Are you tired of having to reinstall your Chrome extensions at every login? Use this simple shell script!

## What this script does
By running this script, the extensions chosen by you (and presented in the running script) will get added to your macOS profile, "forcing" them into every Google Chrome instance in your macOS account. This means that even when you log out and sign into a Codam mac again, the extensions will be automatically installed again. The extensions will still automatically update, as they're just pulled from the [Chrome Web Store](https://chrome.google.com/webstore/category/extensions). Please note that after running the script for the first time, you will have to fully quit Chrome and open it again.

The way the extensions are "forced" into Google Chrome is officially supported by Google. See [this webpage](https://developer.chrome.com/docs/extensions/mv2/external_extensions/) on how it works.

## Currently supported extensions
- [Improved Intra 42](https://chrome.google.com/webstore/detail/hmflgigeigiejaogcgamkecmlibcpdgo)
- [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm)
- [ft_logtime](https://chrome.google.com/webstore/detail/ftlogtime/mnohnflacgkmhaocfhhmjeeciibiciep)

## Currently known issues
- When logged out due to not doing anything for 42 minutes, the extensions sometimes get completely removed from the macOS profile. You then need to run the script again.
- After every sign in, you'll need to manually enable the extensions again from the hamburger menu on the top right of the window. But hey, it's better than going to the Chrome Web Store and reinstalling them, right?
- Any other issues in the [issue list](https://github.com/FreekBes/codam_auto_extension_installer/issues)

## Can I add an extension I frequently use?
Please [create an issue](https://github.com/FreekBes/codam_auto_extension_installer/issues/new) in order to discuss if an extension should get added to the list. Anyone using this extension, can then leave a reaction to this issue, if they feel like it should be added too.
