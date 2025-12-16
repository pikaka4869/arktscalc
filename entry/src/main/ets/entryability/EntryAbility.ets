import { UIAbility , Want ,AbilityConstant } from '@kit.AbilityKit';
import { window  } from '@kit.ArkUI';
import Logger from '../model/Logger';

const TAG: string = 'EntryAbility';

export default class EntryAbility extends UIAbility {
  onCreate(want: Want, launchParam: AbilityConstant.LaunchParam) {
    Logger.info(TAG, 'EntryAbility onCreate');
  }

  onDestroy(): void {
    Logger.info(TAG, 'EntryAbility onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage): void {
    Logger.info(TAG, 'EntryAbility onWindowStageCreate');

    windowStage.loadContent('pages/Index', (err, data) => {
      if (err.code) {
        Logger.info(TAG, 'Failed to load the content. Cause: ${JSON.stringify(err)}');
        return;
      }
      Logger.info(TAG, 'Failed to load the content. Cause: ${JSON.stringify(data)}');
    });
  }

  onWindowStageDestroy(): void {
    Logger.info(TAG, 'MainAbility onWindowStageDestroy');
  }

  onForeground(): void {
    Logger.info(TAG, 'MainAbility onForeground');
  }

  onBackground(): void {
    Logger.info(TAG, 'MainAbility onBackground');
  }
}
