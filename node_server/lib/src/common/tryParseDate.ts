export function tryParseDate(str: string | undefined) : Date | undefined {
  if (!str) {
    return 
  }
  return new Date(str)
}