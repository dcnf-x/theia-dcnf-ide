/**
 * Generated using theia-extension-generator
 */
import { TheiaDcnfCommandContribution, TheiaDcnfMenuContribution } from './theia-dcnf-contribution';
import { CommandContribution, MenuContribution } from '@theia/core/lib/common';
import { ContainerModule } from '@theia/core/shared/inversify';

export default new ContainerModule(bind => {
    // add your contribution bindings here
    bind(CommandContribution).to(TheiaDcnfCommandContribution);
    bind(MenuContribution).to(TheiaDcnfMenuContribution);
});
