"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FormatterStatus = void 0;
const vscode_1 = require("vscode");
const utils_1 = require("./utils");
var FormatterStatus;
(function (FormatterStatus) {
    FormatterStatus["Ready"] = "check-all";
    FormatterStatus["Success"] = "check";
    FormatterStatus["Error"] = "alert";
})(FormatterStatus = exports.FormatterStatus || (exports.FormatterStatus = {}));
const checkForInConsoleTabSwitch = (editor) => {
    // output and debug console is also seen as an editor
    // hence switching tabs will trigger the function
    // this prevents hiding statusBarItem when switching between tabs
    return ['debug', 'output'].some((part) => editor.document.uri.scheme === part);
};
class StatusBarService {
    constructor() {
        this.statusBarItem = vscode_1.window.createStatusBarItem(vscode_1.StatusBarAlignment.Right, -1);
        this.updateStatusBarItem(FormatterStatus.Ready);
        this.statusBarItem.tooltip = `${utils_1.EXTENSION_NAME}: v${utils_1.EXTENSION_VERSION}`;
        this.statusBarItem.command = 'scss-formatter.output.show';
        this.toggleStatusBarItem(vscode_1.window.activeTextEditor);
    }
    registerDisposables() {
        return [
            // Keep track whether to show/hide the statusbar
            vscode_1.window.onDidChangeActiveTextEditor((editor) => {
                this.updateStatusBarItem(FormatterStatus.Ready);
                this.toggleStatusBarItem(editor);
            }),
        ];
    }
    // toggle statusBarItem when document changes
    toggleStatusBarItem(editor) {
        if (!this.statusBarItem) {
            return;
        }
        if (!editor) {
            this.statusBarItem.hide();
        }
        else {
            if (checkForInConsoleTabSwitch(editor)) {
                return;
            }
            // hide statusBarItem if document changes and doesn't match supported languages
            const score = vscode_1.languages.match(utils_1.supportedLanguages, editor.document);
            if (score) {
                this.statusBarItem.show();
            }
            else {
                this.statusBarItem.hide();
            }
        }
    }
    // update statusBarItem text and tooltip
    updateStatusBarItem(status) {
        this.statusBarItem.text = `${utils_1.EXTENSION_NAME}: $(${status.toString()})`;
        this.statusBarItem.show();
    }
    reset() {
        this.statusBarItem.text = utils_1.EXTENSION_NAME;
    }
}
exports.default = StatusBarService;
//# sourceMappingURL=StatusBarService.js.map