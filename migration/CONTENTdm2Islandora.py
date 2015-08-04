import os
import argparse
import sys

__author__ = 'California Audio Visual Preservation Project'

from lxml import etree


xml_file = "allan_hancock_export.xml"
XSLT_FILE = "ContendDM2Islandora.xsl"


def convert_to_islandora(xml_file, dest=os.getcwd(), xslt_file="ContendDM2Islandora.xsl"):
    xml = etree.parse(xml_file)
    transform = etree.XSLT(etree.parse(xslt_file))
    for i, x in enumerate(xml.xpath('./*')):
        result = transform(x)
        save_file = "cavpp_data_" + str(i + 1).zfill(3) + ".xml"
        result.write(os.path.join(dest, save_file), pretty_print=True)
        print(save_file)


def valid_args(args):
    valid = True
    errors = []
    if not os.path.isfile(args.source):
        valid = False
        errors.append("'{}' is not an exiting file.".format(args.source))
    if args.destination:
        if not os.path.dirname(args.destination):
            valid = False
            errors.append("'{}' is not a valid destination.".format(args.destination))
    if args.xslt:
        if not os.path.isfile(args.xslt):
            valid = False
            errors.append("'{}' is not a valid file.".format(args.destination))
        else:
            if not os.path.splitext(args.xslt)[1] == '.xsl':
                valid = False
                errors.append("'{}' is not a valid xsl file.".format(args.destination))
    return valid, errors


def banner():
    print("\nCalifornia Audio Visual Preservation Project: CONTENTdm to Islandora Metadata Converter\n")


def main():
    banner()
    parser = argparse.ArgumentParser(description="This script converts collection level data from CONTENTdm "
                                                 "into Islandora.")
    parser.add_argument('source', metavar='source', help="CONTENTdm exported collection level XML file.")
    parser.add_argument('--destination', metavar='path', help="Output path for the new XML files")
    parser.add_argument('--xslt',
                        metavar='file',
                        help='The XSL translation file for converting the files. Defaults: ContendDM2Islandora.xsl')
    args = parser.parse_args()
    valid, errors = valid_args(args)
    if valid:
        convert_to_islandora(args.source)
    else:
        for error in errors:
            sys.stderr.write(error + "\n")

if __name__ == '__main__':
    main()