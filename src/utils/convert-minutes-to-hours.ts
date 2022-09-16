export function convertMinutesStringToHours(minutesAmount: number) {
    const houers = Math.floor(minutesAmount / 60);

    const minutes = minutesAmount % 60;

    return `${String(houers).padStart(2, "0")}:${String(minutes).padStart(
        2,
        "0"
    )}`;
}
