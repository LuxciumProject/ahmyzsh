# # Static
#- https://img.shields.io/badge/<LABEL>-<MESSAGE>-<COLOR>

# # Colors
#- https://img.shields.io/static/v1?label=<LABEL>&message=<MESSAGE>&color=<COLOR>

# # Endpoint
#- https://img.shields.io/endpoint?url=<URL>&style<STYLE>

# # Dynamic
#- https://img.shields.io/badge/dynamic/json?url=<URL>&label=<LABEL>&query=<$.DATA.SUBDATA>&color=<COLOR>&prefix=<PREFIX>&suffix=<SUFFIX>

#- https://img.shields.io/badge/dynamic/xml?url=<URL>&label=<LABEL>&query=<//data/subdata>&color=<COLOR>&prefix=<PREFIX>&suffix=<SUFFIX>

#- https://img.shields.io/badge/dynamic/yaml?url=<URL>&label=<LABEL>&query=<$.DATA.SUBDATA>&color=<COLOR>&prefix=<PREFIX>&suffix=<SUFFIX>

#-  Styles
#- The following styles are available. Flat is the default. Examples are shown with an optional logo:

# plastic
#* ?style=plastic&logo=appveyor
# flat
#* ?style=flat&logo=appveyor
# flat-square
#* ?style=flat-square&logo=appveyor
# for-the-badge
#* ?style=for-the-badge&logo=appveyor
# social
#* ?style=social&logo=appveyor

#* ?label=healthinesses
# Override the default left-hand-side text (URL-Encoding needed for spaces or special characters!)
#* ?logo=appveyor
# Insert one of the named logos from (bitcoin, dependabot, discord, gitlab, npm, paypal, serverfault, stackexchange, superuser, telegram, travis) or simple-icons. Simple-icons are referenced using names as they appear on the simple-icons site. If the name includes spaces, replace them with dashes (e.g: ?logo=visual-studio-code)
#* ?logo=data:image/png;base64,…
# Insert custom logo image (≥ 14px high). There is a limit on the total size of request headers we can accept (8192 bytes). From a practical perspective, this means the base64-encoded image text is limited to somewhere slightly under 8192 bytes depending on the rest of the request header.
#* ?logoColor=violet
# Set the color of the logo (hex, rgb, rgba, hsl, hsla and css named colors supported). Supported for named logos but not for custom logos.
#* ?logoWidth=40
# Set the horizontal space to give to the logo
#* ?link=http://left&link=http://right
# Specify what clicking on the left/right of a badge should do (esp. for social badge style)
#* ?labelColor=abcdef
# Set background of the left part (hex, rgb, rgba, hsl, hsla and css named colors supported). The legacy name "colorA" is also supported.
#* ?color=fedcba
# Set background of the right part (hex, rgb, rgba, hsl, hsla and css named colors supported). The legacy name "colorB" is also supported.
#* ?cacheSeconds=3600
# Set the HTTP cache lifetime (rules are applied to infer a default value on a per-badge basis, any values specified below the default will be ignored). The legacy name "maxAge" is also supported.

#- Above are a few other parameters you can use: (connecting several with "&" is possible)

#- We support .svg and .json. The default is .svg, which can be omitted from the URL.

#- While we highly recommend using SVG, we also support .png for use cases where SVG will not work. These requests should be made to our raster server https://raster.shields.io. For example, the raster equivalent of https://img.shields.io/v/npm/express is https://raster.shields.io/v/npm/express. For backward compatibility, the badge server will redirect .png badges to the raster server.
