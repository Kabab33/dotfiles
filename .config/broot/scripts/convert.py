import typer
from pick import pick
import os


app = typer.Typer(pretty_exceptions_show_locals=True)


def findFrom(FromFile):
    if not os.path.isfile(FromFile):
        raise typer.BadParameter(f"{FromFile} is not a file.")
    return os.path.splitext(FromFile)[1][1:]


@app.command()
def convert(fromfile: str, to_type: str):
    from_type = findFrom(fromfile)

    file_types = [
        {
            "From": ["doc", "odt", "docx"],
            "To": ["pdf", "epub", "html", "txt", "rtf", "md"],
            "With": f'soffice --headless --convert-to {to_type} "{fromfile}"',
        }
    ]

    candidates = []

    for converter in file_types:
        if (from_type in converter["From"]) and (to_type in converter["To"]):
            candidates.append(converter["With"])

    if candidates == []:
        print(f"No Converters found for {from_type} to {to_type}")
    elif len(candidates) == 1:
        os.system(candidates[0])
    else:
        choice, index = pick(candidates, "Choose a converter")
        os.system(candidates[index])


if __name__ == "__main__":
    app()
