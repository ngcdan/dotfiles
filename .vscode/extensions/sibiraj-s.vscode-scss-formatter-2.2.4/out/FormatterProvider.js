"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const prettier_1 = require("prettier");
const vscode_1 = require("vscode");
const StatusBarService_1 = require("./StatusBarService");
// add filepath to the output message
const addFilePathToMesssage = (message, fileName) => {
    const lines = message.split('\n');
    if (lines.length > 0) {
        lines[0] = lines[0].replace(/(?:\d*):(?:\d*)/g, `${fileName}:$1:$2`);
        return lines.join('\n');
    }
    return message;
};
const getPrettierOptions = (document, options) => {
    const wsConfig = vscode_1.workspace.getConfiguration('scssFormatter');
    const { languageId } = document;
    return Object.assign(Object.assign({}, wsConfig), { tabWidth: options.tabSize, useTabs: !options.insertSpaces, parser: languageId });
};
// get range for the current document
const fullDocumentRange = (document) => {
    const rangeStart = document.lineAt(0).range.start;
    const rangeEnd = document.lineAt(document.lineCount - 1).range.end;
    return new vscode_1.Range(rangeStart, rangeEnd);
};
class SCSSFormatter {
    constructor(loggingService, statusbarService) {
        this.loggingService = loggingService;
        this.statusbarService = statusbarService;
    }
    formatDocument(document, options) {
        const rawDocumentText = document.getText();
        const { fileName } = document;
        const prettierOptions = getPrettierOptions(document, options);
        try {
            const formattedDocument = (0, prettier_1.format)(rawDocumentText, prettierOptions);
            this.loggingService.addToOutput(`${fileName} : Formatted Successfully`);
            this.statusbarService.updateStatusBarItem(StatusBarService_1.FormatterStatus.Success);
            return formattedDocument;
        }
        catch (err) {
            const errMessage = err instanceof Error ? err.message : String(err);
            this.loggingService.addToOutput(addFilePathToMesssage(errMessage, fileName));
            this.statusbarService.updateStatusBarItem(StatusBarService_1.FormatterStatus.Error);
            return rawDocumentText;
        }
    }
    provideDocumentFormattingEdits(document, options) {
        const formattedDocument = this.formatDocument(document, options);
        return [vscode_1.TextEdit.replace(fullDocumentRange(document), formattedDocument)];
    }
}
exports.default = SCSSFormatter;
//# sourceMappingURL=FormatterProvider.js.map