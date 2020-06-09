export default function(api) {
    api.cache(true);

    const presets = [
        '@babel/env',
        '@babel/preset-react',
        '@babel/preset-typescript',
        'minify',
    ];
    const plugins = ['@babel/plugin-transform-typescript'];

    return {
        presets,
        plugins,
    };
}
