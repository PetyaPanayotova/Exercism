export function twoFer(name = 'you') {
    return name == "" ? twoFer() : `One for ${name}, one for me.`;
}