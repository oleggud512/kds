export function tryParseFloat(i: string | undefined) : number | undefined {
  if (!i) return;
  return parseFloat(i)
}